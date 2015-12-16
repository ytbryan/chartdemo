class FrontPagesController < ApplicationController
  before_action :set_front_page, only: [:show, :edit, :update, :destroy]


  def randomScalingFactor
    return rand(0..100)
  end

  def main

    @horizontal_grouped_bar_array = [
          {
              key: 'Series1',
              values: [
                  {
                      label: "Group A" ,
                      value: -1.8746444827653
                  } ,
                  {
                      label: "Group B" ,
                      value: -8.0961543492239
                  } ,
                  {
                      label: "Group C" ,
                      value: -0.57072943117674
                  } ,
                  {
                      label: "Group D" ,
                      value: -2.4174010336624
                  } ,
                  {
                      label: "Group E" ,
                      value: -0.72009071426284
                  } ,
                  {
                      label: "Group F" ,
                      value: -2.77154485523777
                  } ,
                  {
                      label: "Group G" ,
                      value: -9.90152097798131
                  } ,
                  {
                      label: "Group H" ,
                      value: 14.91445417330854
                  } ,
                  {
                      label: "Group I" ,
                      value: -3.055746319141851
                  }
              ]
          },
          {
              key: 'Series2',
              values: [
                  {
                      label: "Group A" ,
                      value: 25.307646510375
                  } ,
                  {
                      label: "Group B" ,
                      value: 16.756779544553
                  } ,
                  {
                      label: "Group C" ,
                      value: 18.451534877007
                  } ,
                  {
                      label: "Group D" ,
                      value: 8.6142352811805
                  } ,
                  {
                      label: "Group E" ,
                      value: 7.8082472075876
                  } ,
                  {
                      label: "Group F" ,
                      value: 5.259101026956
                  } ,
                  {
                      label: "Group G" ,
                      value: 7.0947953487127
                  } ,
                  {
                      label: "Group H" ,
                      value: 8
                  } ,
                  {
                      label: "Group I" ,
                      value: 21
                  }
              ]
          },
          {
              key: 'Series3',
              values: [
                  {
                      label: "Group A" ,
                      value: -14.307646510375
                  } ,
                  {
                      label: "Group B" ,
                      value: 16.756779544553
                  } ,
                  {
                      label: "Group C" ,
                      value: -18.451534877007
                  } ,
                  {
                      label: "Group D" ,
                      value: 8.6142352811805
                  } ,
                  {
                      label: "Group E" ,
                      value: -7.8082472075876
                  } ,
                  {
                      label: "Group F" ,
                      value: 15.259101026956
                  } ,
                  {
                      label: "Group G" ,
                      value: -0.30947953487127
                  } ,
                  {
                      label: "Group H" ,
                      value: 0
                  } ,
                  {
                      label: "Group I" ,
                      value: 0
                  }
              ]
          }
      ].to_json

    @discete_bar_array = [
          {
              key: "Cumulative Return",
              values: [
                  {
                      label: "A" ,
                      value: 29.765957771107
                  } ,
                  {
                      label: "B" ,
                      value: 0
                  } ,
                  {
                      label: "C" ,
                      value: 32.807804682612
                  } ,
                  {
                      label: "D" ,
                      value: 196.45946739256
                  } ,
                  {
                      label: "E" ,
                      value: 0.19434030906893
                  } ,
                  {
                      label: "F" ,
                      value: -98.079782601442
                  } ,
                  {
                      label: "G" ,
                      value: 13.925743130903
                  } ,
                  {
                      label: "H" ,
                      value: 5.1387322875705
                  }
              ]
          }
      ].to_json

    @data_array_for_boxplot = [
          {
            label: "Sample A",
            values: {
              Q1: 120,
              Q2: 150,
              Q3: 200,
              whisker_low: 115,
              whisker_high: 210,
              outliers: [50, 100, 225]
            },
          },
          {
            label: "Sample B",
            values: {
              Q1: 300,
              Q2: 350,
              Q3: 400,
              whisker_low: 225,
              whisker_high: 425,
              outliers: [175]
            },
          },
          {
            label: "Sample C",
            values: {
              Q1: 50,
              Q2: 100,
              Q3: 125,
              whisker_low: 25,
              whisker_high: 175,
              outliers: [0]
            },
          }
        ].to_json

    @bar_size = {
      height: 300,
      width: 300
    }
    @discrete_bar_size = {
      height: 500,
      width: 500
    }
    @size1 = {
      height: 500,
      width: 500
    }

    @data = {
      :labels => ["January","February","March","April","May","June","July"],
      :datasets => [{
        :label =>"My First dataset",
        :fillColor => "rgba(151,187,205,0.2)",
        :strokeColor => "rgba(151,187,205,1)",
        :highlightFill => "rgba(220,220,220,1)",
        :highlightStroke => "#fff",
        :data => [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
      },
      {
        :label =>"My First dataset",
        :fillColor => "rgba(151,187,205,0.2)",
        :strokeColor => "rgba(151,187,205,1)",
        :highlightFill => "rgba(220,220,220,1)",
        :highlightStroke => "#fff",
        :data => [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
      }]
    }.to_json

    @data2 = {
      :labels => ["January","February","March","April","May","June","July"],
      :datasets => [{
        :label =>"My First dataset",
        :fillColor => "rgba(151,187,205,0.2)",
        :strokeColor => "rgba(151,187,205,1)",
        :highlightFill => "rgba(220,220,220,1)",
        :highlightStroke => "#fff",
        :data => [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
      },
      {
        :label =>"My First dataset",
        :fillColor => "rgba(151,187,205,0.2)",
        :strokeColor => "rgba(151,187,205,1)",
        :highlightFill => "rgba(220,220,220,1)",
        :highlightStroke => "#fff",
        :data => [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
      }]
    }.to_json


    @data3 = {
      :labels => ["January","February","March","April","May","June","July"],
      :datasets => [{
        :label =>"My First dataset",
        :fillColor => "rgba(151,187,205,0.2)",
        :strokeColor => "rgba(151,187,205,1)",
        :highlightFill => "rgba(220,220,220,1)",
        :highlightStroke => "#fff",
        :data => [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
      },
      {
        :label =>"My First dataset",
        :fillColor => "rgba(151,187,205,0.2)",
        :strokeColor => "rgba(151,187,205,1)",
        :highlightFill => "rgba(220,220,220,1)",
        :highlightStroke => "#fff",
        :data => [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
      }]
    }.to_json


    @lineSize = {
      height: 200,
      width: 200
    }


    @lineData = {
        labels: ["January","February","March","April","May","June","July"],
        datasets: [
          {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
          },
          {
            label: "My Second dataset",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
          }
        ]

      }


    @lineData = {
        :labels => ["January","February","March","April","May","June","July"],
        :datasets => [
          {
            :label => "My First dataset",
            :fillColor => "rgba(220,220,220,0.2)",
            :strokeColor => "rgba(220,220,220,1)",
            :pointColor => "rgba(220,220,220,1)",
            :pointStrokeColor => "#fff",
            :pointHighlightFill => "#fff",
            :pointHighlightStroke => "rgba(220,220,220,1)",
            :data => [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
          },
          {
            :label => "My Second dataset",
            :fillColor => "rgba(151,187,205,0.2)",
            :strokeColor => "rgba(151,187,205,1)",
            :pointColor => "rgba(151,187,205,1)",
            :pointStrokeColor => "#fff",
            :pointHighlightFill => "#fff",
            :pointHighlightStroke => "rgba(151,187,205,1)",
            :data => [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
          }
        ]

      }.to_json



    @pieSize = {
      :height => 50,
      :width => 50
    }

    @pieData = [
  				{
  					value: 300,
  					color:"#F7464A",
  					highlight: "#FF5A5E",
  					label: "Red"
  				},
  				{
  					value: 50,
  					color: "#46BFBD",
  					highlight: "#5AD3D1",
  					label: "Green"
  				},
  				{
  					value: 100,
  					color: "#FDB45C",
  					highlight: "#FFC870",
  					label: "Yellow"
  				},
  				{
  					value: 40,
  					color: "#949FB1",
  					highlight: "#A8B3C5",
  					label: "Grey"
  				},
  				{
  					value: 120,
  					color: "#4D5360",
  					highlight: "#616774",
  					label: "Dark Grey"
  				}

  			].to_json



    @radarSize = {
      :height => 50,
      :width => 50
    }


    @radarData = {
    		labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
    		datasets: [
    			{
    				label: "My First dataset",
    				fillColor: "rgba(220,220,220,0.2)",
    				strokeColor: "rgba(220,220,220,1)",
    				pointColor: "rgba(220,220,220,1)",
    				pointStrokeColor: "#fff",
    				pointHighlightFill: "#fff",
    				pointHighlightStroke: "rgba(220,220,220,1)",
    				data: [65,59,90,81,56,55,40]
    			},
    			{
    				label: "My Second dataset",
    				fillColor: "rgba(151,187,205,0.2)",
    				strokeColor: "rgba(151,187,205,1)",
    				pointColor: "rgba(151,187,205,1)",
    				pointStrokeColor: "#fff",
    				pointHighlightFill: "#fff",
    				pointHighlightStroke: "rgba(151,187,205,1)",
    				data: [28,48,40,19,96,27,100]
    			}
    		]
    	}.to_json


      @size0 = {
        :height => 100,
        :width => 100
      }

      @size = {
        :height => 50,
        :width => 50
      }

      @size2 = {
        :height => 500,
        :width => 500
      }




  end
  # GET /front_pages
  # GET /front_pages.json
  def index
    @front_pages = FrontPage.all
  end

  # GET /front_pages/1
  # GET /front_pages/1.json
  def show
  end

  # GET /front_pages/new
  def new
    @front_page = FrontPage.new
  end

  # GET /front_pages/1/edit
  def edit
  end

  # POST /front_pages
  # POST /front_pages.json
  def create
    @front_page = FrontPage.new(front_page_params)

    respond_to do |format|
      if @front_page.save
        format.html { redirect_to @front_page, notice: 'Front page was successfully created.' }
        format.json { render :show, status: :created, location: @front_page }
      else
        format.html { render :new }
        format.json { render json: @front_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /front_pages/1
  # PATCH/PUT /front_pages/1.json
  def update
    respond_to do |format|
      if @front_page.update(front_page_params)
        format.html { redirect_to @front_page, notice: 'Front page was successfully updated.' }
        format.json { render :show, status: :ok, location: @front_page }
      else
        format.html { render :edit }
        format.json { render json: @front_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /front_pages/1
  # DELETE /front_pages/1.json
  def destroy
    @front_page.destroy
    respond_to do |format|
      format.html { redirect_to front_pages_url, notice: 'Front page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_front_page
      @front_page = FrontPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def front_page_params
      params[:front_page]
    end
end
