#include<cstdio>
#include<stack>
#include<vector>
#include<unordered_map>
using namespace std;
long long m, n;
const int MAX_SLICES = 1e9+5;
long long slices[100005];
vector<long long> save,tmp;
long long greedy(int index) {
	stack<long long> s;
	long long cnts = 0;
	tmp.clear();
	for (int i = index; i >= 0; i--) {
		if (cnts + slices[i] <= m) {
			s.push(i);
			cnts += slices[i];
		}
	}
	while (!s.empty()) {
		tmp.push_back(s.top());
		s.pop();
	}
	return cnts;
}
int main() {
	long long maxM = 0;
	scanf("%lld%lld", &m, &n);
	for (int i = 0; i < n; i++)scanf("%lld", &slices[i]);
	for (int i = n - 1; i >= 0; i--) {
		long long tmpM = greedy(i);
		if (tmpM > maxM) {
			maxM = tmpM;
			save = tmp;
		}
	}
	printf("%lld\n", save.size());
	for (int i = 0; i < save.size(); i++) printf("%lld ", save[i]);
}