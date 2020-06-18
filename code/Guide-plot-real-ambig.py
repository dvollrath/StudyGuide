import numpy as np
import matplotlib.pyplot as plt
import os

#############################################
## Define functions
#############################################
def Consumer(p1, p2, I, alpha, theta): # calculate consumer's optimal choices
	power = 1-theta # for convenience
	denom = alpha*(p1**power)+(1-alpha)*(p2**power) # for convenience
	e1 = alpha*(p1**power)/denom # expend share on good 1
	e2 =(1-alpha)*(p2**power)/denom # expend share on good 2
	c1 = (I/p1)*e1 # consumption of good 1
	c2 = (I/p2)*e2 # consumption of good 2
	U = I/(denom**(1/power)) # utility of bundle
	return c1, c2, e1, e2, U

def AvgMarkup(mc1, mc2, mu1, mu2, alpha, theta):
	power = 1 - theta
	a1 = alpha*(mc1*mu1)**(power)
	a2 = (1-alpha)*(mc2*mu2)**(power)
	denom = (1/mu1)*a1/(a1+a2) + (1/mu2)*a2/(a1+a2)
	return 1/denom

def PriceIndex(p1, p2, alpha, theta):
	power = 1 - theta
	return (alpha*(p1**power)+(1-alpha)*(p2**power))**(1/power)

def EndowShare(e1, e2, mu1, mu2): # calculate share of endowment used to produce different goods
	denom = e1/mu1 + e2/mu2
	s1 = (e1/mu1)/denom
	s2 = (e2/mu2)/denom
	return s1, s2

def IndirectShare(s1, s2, mc1, mc2, L, alpha, theta): # calculate utility given endowment shares and marginal costs
	a = (theta-1)/(theta)
	b = 1/theta
	interior = (alpha**b)*((s1/mc1)**a) + ((1-alpha)**b)*((s2/mc2)**a)
	return L*(interior)**(1/a)

def Expenditure(p1, p2, U, alpha, theta): # expenditure function
	power = 1-theta
	return U*((alpha*(p1**power) + (1-alpha)*(p2**power))**(1/power))

def Feasible(mc1, mc2, mu1, mu2, I, alpha, theta): # solve for feasible set given prices, markups
	power = 1-theta
	n = alpha*((mu1*mc1)**power) + (1-alpha)*((mu2*mc2)**power)
	d = alpha*((mu1*mc1)**power)/mu1 + (1-alpha)*((mu2*mc2)**power)/mu2
	return I*n/d

def PPFCurve(c1, mc1, mc2, L): # points along a PPF
	return (L/mc2)-(mc1/mc2)*c1

def BudgetCurve(c1, p1, p2, I): # points along a budget constraint
	return (I/p2)-(p1/p2)*c1

def IndifCurve(c1, U, alpha, theta): # points along an indifference curve
	a = (theta-1)/(theta)
	b = 1/theta
	return ((U**a-(alpha**b)*(c1**a))/((1-alpha)**b))**(1/a)

#############################################
## Set up problem
#############################################
# Set range of x-axis values to graph against
c1 = np.linspace(0.1,150,num=100)

#############################################
## Calculate solutions
#############################################
Old = BudgetCurve(c1,1,2,100)
New = BudgetCurve(c1,2,1,100)

#############################################
## Create figure
#############################################
fig, ax = plt.subplots(figsize=(8,8))

# Main elements
ax.plot(c1, Old, lw=3, color='black') # plot old budget
ax.plot(c1, New, lw=3, color='black', linestyle='--') # plot new budget
ax.plot(60,20,'or',markersize=10) # old bundle
ax.plot(20,60,'or',markersize=10) # old bundle
ax.annotate('Past bundle', xy=(60,20), xytext=(60+2, 20+2), size=20)
ax.annotate('Present bundle', xy=(20,60), xytext=(20+2, 60+2), size=20)
#ax.annotate(r'Slope = $\frac{-U_c(c_1)}{\beta U_c(c_2)}$', xy=(15,120), xytext=(15, 120), size=20)
#ax.annotate(r'Slope = $-(1+r)$', xy=(15,50), xytext=(15, 50), size=20)

# Options
ax.set_xlim(0, 100)
ax.set_ylim(0, 100)
ax.set_xlabel('Consumption of good 1', fontsize=16)
ax.set_ylabel('Consumption of good 2', fontsize=16)
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)
ax.grid()


# Save
location = os.path.abspath(os.path.dirname(__file__))
path = os.path.join(location, "../Drafts/fig-real-gdp-ambig.eps")
plt.savefig(path, bbox_inches='tight')
