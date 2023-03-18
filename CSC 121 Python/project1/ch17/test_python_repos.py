import unittest

import python_repos as pr

class PythonReposTestCase(unittest.TestCase):
    """Test for python_repos.py."""

    def setUp(self):
        """Call all the functions."""
        self.r = pr.api_response()
        self.repo_dicts = pr.get_repo_dicts(self.r)
        self.repo_dict = self.repo_dicts[0]
        self.repo_links, self.stars, self.labels = pr.plotting_data(
                self.repo_dicts)

    def test_api_response(self):
        """200 code test."""
        self.assertEqual(self.r.status_code, 200)

if __name__ == '__main__':
    unittest.main()