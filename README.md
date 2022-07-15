## dbt models for `jaffle_shop`

The raw data from the app consists of customers, orders, and payments, with the
following entity-relationship diagram:

![Jaffle Shop ERD](./dbt/etc/jaffle_shop_erd.png)

This [dbt](https://www.getdbt.com/) project has a split personality:

* **Tutorial**: The [master](https://github.com/fishtown-analytics/jaffle_shop/tree/master)
  branch is a useful minimum viable dbt project to get new dbt users up and
  running with their first dbt project. It includes [seed](https://docs.getdbt.com/docs/building-a-dbt-project/seeds)
  files with generated data so a user can run this project on their own warehouse.
* **Demo**: The [demo](https://github.com/fishtown-analytics/jaffle_shop/tree/demo/master)
  branch is used to illustrate how we (Fishtown Analytics) would structure a dbt
  project. The project assumes that your raw data is already in your warehouse,
  so therefore the repo cannot be run as a standalone project. The demo is more
  complex than the tutorial as it is structured in a way that can be extended for
  larger projects.



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
