Welcome to your new dbt project!

<<<<<<< HEAD
<<<<<<< HEAD
`jaffle_shop` is a fictional ecommerce store. This dbt project transforms raw
data from an app database into a customers and orders model ready for analytics.
=======
The raw data from the app consists of customers, orders, and payments, with the
following entity-relationship diagram:
=======
### Using the starter project
>>>>>>> b2d7ad4a12fe20ba9cb8ae038a64bb6207acbffe

Try running the following commands:
- dbt run
- dbt test


<<<<<<< HEAD
>>>>>>> 1ab8b0ccb3b94149380aa8ab5b17a5a8a54d764b

### Using this project as a tutorial

To get up and running with this project:

1. Install dbt using [these instructions](https://docs.getdbt.com/docs/installation).

2. Clone this repository

3. Create a profile.yml to connect to DWH and populate following the instructions in profiles.template.yml

```bash
mkdir ~/.dbt && touch ~/.dbt/profile.yml
```

4. Change into the `dbt` directory from the command line:

```bash
$ cd dbt
```

5. Ensure your profile is setup correctly from the command line:

```bash
$ dbt debug
```

6. Load the CSVs with the demo data set. This materializes the CSVs as tables in
  your target schema. Note that a typical dbt project **does not require this
  step** since dbt assumes your raw data is already in your warehouse.

```bash
$ dbt seed
```

7. Run the models:

```bash
$ dbt run
```

> **NOTE:** If this steps fails, it might be that you need to make small changes to the SQL in the models folder to adjust for the flavor of SQL of your target database. Definitely consider this if you are using a community-contributed adapter.

8. Test the output of the models:

```bash
$ dbt test
```

9. Generate documentation for the project:

```bash
$ dbt docs generate
```

10. View the documentation for the project:

```bash
$ dbt docs serve
```

### What is a jaffle?

A jaffle is a toasted sandwich with crimped, sealed edges. Invented in Bondi in 1949, the humble jaffle is an Australian classic. The sealed edges allow jaffle-eaters to enjoy liquid fillings inside the sandwich, which reach temperatures close to the core of the earth during cooking. Often consumed at home after a night out, the most classic filling is tinned spaghetti, while my personal favourite is leftover beef stew with melted cheese.

---
For more information on dbt:

* Read the [introduction to dbt](https://docs.getdbt.com/docs/introduction).
* Read the [dbt viewpoint](https://docs.getdbt.com/docs/about/viewpoint).
* Join the [chat](http://slack.getdbt.com/) on Slack for live questions and support.

---
=======
### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
>>>>>>> b2d7ad4a12fe20ba9cb8ae038a64bb6207acbffe
