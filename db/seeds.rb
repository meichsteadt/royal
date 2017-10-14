Brand.create!([
  {name: "Coaster", image: nil, video: nil, logo: "https://s3-us-west-2.amazonaws.com/fdn-images-2/img/dealer/40370/Upload/logo/e973633264e44b1c9a742125cb9d13bb.jpg", category: "furniture"},
  {name: "Homelegance", image: nil, video: nil, logo: "https://www.homelegance.com/wp-content/themes/h2/images/logo.png", category: "furniture"},
  {name: "Acme", image: nil, video: nil, logo: "https://www.acmecorp.com/skin/frontend/acmefurniture/acme/images/acme_logo.png", category: "furniture"},
  {name: "Furniture of America", image: nil, video: nil, logo: "https://scontent.fsnc1-1.fna.fbcdn.net/v/t1.0-9/1454611_875423402508474_6570122812190848548_n.jpg?oh=d545c7ffb3dfccb89eae34700165a300&oe=5A215584", category: "furniture"},
  {name: "Urban Styles", image: nil, video: nil, logo: "http://www.urbanstyles.net/skin/frontend/default/theme638/images/logo.png", category: "furniture"},
  {name: "New Classic", image: nil, video: nil, logo: "http://newclassicfurniture.com/wp-content/uploads/2016/09/logo-new-1.jpg", category: "furniture"},
  {name: "Gomen Furniture", image: nil, video: nil, logo: "http://static1.squarespace.com/static/53152d7fe4b05e4b3991347b/t/5318c064e4b02cc79a151e66/1462490666933/?format=500w", category: "furniture"},
  {name: "Stanford Furniture", image: nil, video: nil, logo: nil, category: "furniture"},
  {name: "Diamond Mattress", image: nil, video: nil, logo: "", category: "mattresses"}
])
Mattress.create!([
  {name: "Holiday Medium", manufacturer_id: nil, price: 749, features: [], image: "http://www.diamondmattress.com/Resources/ProductPhotos/Holiday%20ET_3.jpg", description: "The Dream Collection combines our 744 foam-encased, individually-wrapped coil support system and visco memory foam to help you fall asleep faster, stay asleep longer and wake up feeling refreshed. Dream Collection beds do not transfer motion between partners, allowing you to sleep throughout the night and receive deeper, more rejuvenating rest. These beds also reduce tossing and turning through the pressure-relieving support of our luxurious Eco-Flex plant-based comfort layers.", firmness: "medium", warranty_length: 20, warranty_details: nil, sizes: ["twin", "full", "queen", "king", "cal_king"], brand_id: 9, components: ["gel_foam", "pocketed_coil"], adjustable: true, price_sizes: "{:twin=>{:matt=>399, :set=>499}, :full=>{:matt=>499, :set=>599}, :queen=>{:matt=>599, :set=>749}, :king=>{:matt=>849, :set=>1049}}"},
  {name: "Holiday Firm", manufacturer_id: nil, price: 749, features: [], image: "http://www.diamondmattress.com/Resources/ProductPhotos/Holiday%20ET_3.jpg", description: "The Dream Collection combines our 744 foam-encased, individually-wrapped coil support system and visco memory foam to help you fall asleep faster, stay asleep longer and wake up feeling refreshed. Dream Collection beds do not transfer motion between partners, allowing you to sleep throughout the night and receive deeper, more rejuvenating rest. These beds also reduce tossing and turning through the pressure-relieving support of our luxurious Eco-Flex plant-based comfort layers.", firmness: "firm", warranty_length: 20, warranty_details: nil, sizes: ["Twin", "Full", "Queen", "King"], brand_id: 9, components: ["gel_foam", "pocketed_coil"], adjustable: true, price_sizes: "{:twin=>{:matt=>399, :set=>499}, :full=>{:matt=>499, :set=>599}, :queen=>{:matt=>599, :set=>749}, :king=>{:matt=>849, :set=>1049}}"},
  {name: "Holiday Pillow Top", manufacturer_id: nil, price: 849, features: [], image: "http://www.diamondmattress.com/LiveImage.ashx?width=750&height=725&aspect=true&img=~/Resources/ProductPhotos/Holiday%20PT_1.jpg", description: "The Dream Collection combines our 744 foam-encased, individually-wrapped coil support system and visco memory foam to help you fall asleep faster, stay asleep longer and wake up feeling refreshed. Dream Collection beds do not transfer motion between partners, allowing you to sleep throughout the night and receive deeper, more rejuvenating rest. These beds also reduce tossing and turning through the pressure-relieving support of our luxurious Eco-Flex plant-based comfort layers.", firmness: "plush", warranty_length: 20, warranty_details: nil, sizes: ["Twin", "Full", "Queen", "King"], brand_id: 9, components: ["gel_foam", "pocketed_coil"], adjustable: true, price_sizes: "{:twin=>{:matt=>499, :set=>599}, :full=>{:matt=>599, :set=>749}, :queen=>{:matt=>699, :set=>849}, :king=>{:matt=>949, :set=>1199}}"},
  {name: "Holiday Euro Top", manufacturer_id: nil, price: 799, features: [], image: "http://www.diamondmattress.com/LiveImage.ashx?width=750&height=725&aspect=true&img=~/Resources/ProductPhotos/Holiday%20PT_1.jpg", description: "The Dream Collection combines our 744 foam-encased, individually-wrapped coil support system and visco memory foam to help you fall asleep faster, stay asleep longer and wake up feeling refreshed. Dream Collection beds do not transfer motion between partners, allowing you to sleep throughout the night and receive deeper, more rejuvenating rest. These beds also reduce tossing and turning through the pressure-relieving support of our luxurious Eco-Flex plant-based comfort layers.", firmness: "plush", warranty_length: 20, warranty_details: nil, sizes: ["Twin", "Full", "Queen", "King"], brand_id: 9, components: ["gel_foam", "pocketed_coil"], adjustable: true, price_sizes: "{:twin=>{:matt=>449, :set=>549}, :full=>{:matt=>549, :set=>649}, :queen=>{:matt=>649, :set=>799}, :king=>{:matt=>899, :set=>1099}}"},
  {name: "Shadow Luxury Medium", manufacturer_id: nil, price: 1099, features: [], image: "http://www.diamondmattress.com/Resources/ProductPhotos/A%20BD_Grandeur_Scaled.jpg", description: "The Collection is designed for a luxurious, comfortable and extravagant night's sleep. It's technically developed to help you fall asleep faster, stay asleep longer and wake up feeling refreshed, The Black Diamond beds do not transfer motion between partners, allowing you to sleep throughout the night and receive deeper, more rejuvenating rest. These beds also reduce tossing and turning through the pressure relieving support of our luxurious Eco-Flex plant-based comfort layers and the most advanced, high quality components.", firmness: "medium", warranty_length: 20, warranty_details: nil, sizes: ["Twin", "Full", "Queen", "King"], brand_id: 9, components: ["gel", "pocketed_coil"], adjustable: true, price_sizes: "{:twin=>{:matt=>599, :set=>699}, :full=>{:matt=>799, :set=>899}, :queen=>{:matt=>999, :set=>1099}, :king=>{:matt=>1199, :set=>1399}}"},
  {name: "Highlight Medium", manufacturer_id: nil, price: 1099, features: [], image: "http://www.diamondmattress.com/Resources/ProductPhotos/CT_Enchantment%20Med.jpg", description: "The CoolTouchGEL Memory Foam Collection has been designed using our advanced Gel technology that uses chilling beads to maintain balanced body temperature. Combining the benefits of our ventilated and open-cell design, CoolTouchGEL Memory Foam is 12x more breathable than any other nationally advertised memory foam product.", firmness: "medium", warranty_length: 20, warranty_details: nil, sizes: ["Twin", "Full", "Queen", "King"], brand_id: 9, components: ["gel_foam", "memory_foam"], adjustable: true, price_sizes: "{:twin=>{:matt=>499, :set=>599}, :full=>{:matt=>599, :set=>749}, :queen=>{:matt=>699, :set=>849}, :king=>{:matt=>949, :set=>1199}}"}
])
Product.create!([
  {name: "Entertainment Units 60\" TV Stand with Shelves", category: "occasional", description: "Features large-scale center console with plenty of storage. Constructed with metal and tempered glass", image: "http://imageresizer.furnituredealer.net/img/remote/s3-us-west-2.amazonaws.com/fdn-images-2/img/products%2Fcoaster%2Fcolor%2Fwall%20units_700681-b2.jpg?width=500&height=500", pieces: nil, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 1},
  {name: "Schleiger Collection", category: "bedroom", description: "Transitionally styled with a burnished brown finish, the Schleiger Collection features bold accenting that lends to a rustic industrial interpretation. Substantial framing provides a masculine profile while decorative metal and rivet banding on each piece of the group furthers the look. Each case piece features metal horizontal hardware.", image: "https://www.homelegance.com/wp-content/uploads/2017/03/5400-1__1-750x500.jpg", pieces: 4, style: "rustic", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 2},
  {name: "Porter Bedroom Set", category: "bedroom", description: "With an intricate design lending to the modern look of the Porter Collection, your bedroom will reflect your taste for sophisticated contemporary living. A warm walnut finish and the look of woven detailing highlight the natural wood grain of the veneer on each piece of the collection. Knob hardware blends effortlessly to create an unobtrusive accent to the case goods. The bed features framing on the headboard and low-profile footboard that subtly incorporates the prominent woven design.", image: "https://www.homelegance.com/wp-content/uploads/2015/02/1852-1__11-750x500.jpg", pieces: 4, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 2},
  {name: "Erwan Bedroom Set", category: "bedroom", description: "Taking a nod from contemporary design, the look of the Erwan Collection is a versatile choice for the modern home. A rich espresso finish highlights the okume veneer and beveled drawer fronts which are punctuated with gunmetal finished hardware and bold framing that blend together to create this soft contemporary bedroom offering", image: "https://www.homelegance.com/wp-content/uploads/2017/03/1961-1__1-750x500.jpg", pieces: 4, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 2},
  {name: "Schleiger Dining Set", category: "dining", description: "Transitionally styled with a burnished brown finish, the Schleiger Collection features bold accenting and functional storage options. Sturdy legs support the metal and rivet banded table top with chair and bench options, allowing for versatile seating configurations. Metal and rivet banding with nailhead accent also features prominently on the open hutch and buffet, and mobile kitchen cart.", image: "https://www.homelegance.com/wp-content/uploads/2016/02/5400-94__11-750x500.jpg", pieces: nil, style: "rustic", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 2},
  {name: "Crown Point Dining Set", category: "dining", description: "Adorn your dining area with Crown Point Collection. This grand scale casual dining in warm merlot finish is as strong and durable as they are stunning. Table top is constructed of mango veneer with strong support tapered legs. Attractive X-back dining chair with comfortable leather-look dark brown seat completes the unsophisticated streamlined look", image: "https://www.homelegance.com/wp-content/uploads/2011/10/1372-78_1-750x500.jpg", pieces: nil, style: "contemporary", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 2},
  {name: "Crown Point Dining Set", category: "dining", description: "Adorn your dining area with Crown Point Collection. This grand scale casual dining in warm merlot finish is as strong and durable as they are stunning. Table top is constructed of mango veneer with strong support tapered legs. Attractive X-back dining chair with comfortable leather-look dark brown seat completes the unsophisticated streamlined look", image: "https://www.homelegance.com/wp-content/uploads/2011/10/1372-36_1-750x500.jpg", pieces: nil, style: "contemporary", counter_height: true, sectional: nil, sofa_love: nil, price: 0, brand_id: 2},
  {name: "Compson Dinging Set", category: "dining", description: "With lines that lean to contemporary and a natural finish that can be placed in transitional settings, the unique design of the Compson Collection allows for your decorative imagination to run wild. Convenience factors of the self-storing table leaf, and the two tone finish that highlights the natural grain of the walnut veneer table top, are some of the valuable features offered in this offering. Wood framed chairs have chocolate brown fabric seats and backs that further the two-tone look of the collection. Following the curve of the table top is the optional 60-inch bench. The accompanying server features an open display shelf along with drawer and door storage for stowing your tabletop accessories.", image: "https://www.homelegance.com/wp-content/uploads/2016/02/5431-77__11-750x500.jpg", pieces: nil, style: "contemporary", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 2},
  {name: "Allegra Bedroom Set", category: "bedroom", description: "From our Royal Classics Division comes Allegra, a sophisticated suite with raised panels, bun feet, storage galore and finished in a silky Pewter color.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/06/00-2159_H1.jpg", pieces: 5, style: "traditional", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Hailey Bedroom Set", category: "bedroom", description: "The Hailey collection offers the rustic charm of country living with sturdy ash solids and a toffee finish. Bonnet top crown accents the headboard style panels in the bed, while hefty turn post caps add substance. Full return trims, scalloped aprons, and antiqued bronze hardware further characterize the homespun Hailey.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/06/hailey_panelbed_hr.jpg", pieces: 5, style: "rustic", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Valentino Bedroom Set", category: "bedroom", description: "Framing each piece is a decorative beveled mirror accent that enhances the illumination from the touch-engaged LED back-light of the headboard and mirror. Alligator embossing and high polished crystal-enhanced hardware boldly accent the silver finish of the collection.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/07/00-9698_H1.jpg", pieces: 5, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Sheridan Dining Set", category: "dining", description: "The Sheridan collection boasts old world charm and modern luxury with bookmatched veneer tabletops, reeded table leg, and shaped apron detail anchored by a unique hexagonal foot. Crafted of hardwood solids and veneers and finished in rich burnished cherry. Options include round or rectangle dining table.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/07/nc_sheridan_rect_dininghr-2.jpg", pieces: nil, style: "traditional", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Sheridan Occasional Set", category: "occasional", description: "The classically beautiful Sheridan collection stands out with bookmatched veneer panels topped off with a glimmering burnished cherry finish. Cocktail table’s lift top lid and drawers hide additional storage. Complete the look with one of our matching media furniture consoles.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/07/sheridan.jpg", pieces: nil, style: "traditional", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Bixby Dining Set", category: "dining", description: "The Bixby Dining room evokes a traditional feel with nail head trim seat cushions, shaped legs and wheat back chair. A rich espresso finish updates the look while functional under table shelving is attractive and handy.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/07/bixby-oval-dining-hr.jpg", pieces: nil, style: "traditional", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Bixby Dining Set", category: "dining", description: "The Bixby Dining room evokes a traditional feel with nail head trim seat cushions, shaped legs and wheat back chair. A rich espresso finish updates the look while functional under table shelving is attractive and handy.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/07/bixby-counter-table-hr.jpg", pieces: nil, style: "traditional", counter_height: true, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Gillian Dining Set", category: "dining", description: "The Gillian Dining’s mid century modern influence is enhanced with chair back treatments. Two tone stain highlights the unique grain patterns of the wood. Dining Table includes 18″ Leaf.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/11/galian-001.jpg", pieces: nil, style: "contemporary", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Gillian Dining Set", category: "dining", description: "The Gillian Dining’s mid century modern influence is enhanced with chair back treatments. Two tone stain highlights the unique grain patterns of the wood. Dining Table includes 18″ Leaf.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/11/galian-002.jpg", pieces: nil, style: "contemporary", counter_height: true, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Versailles Bedroom Set", category: "bedroom", description: "The Versailles collection harmonizes traditional details with functional design to accommodate today’s styles. This bedroom collection features bone white veneers, nailhead trim accents, button tufted headboard/ footboard , padded side rails, and hand-carved style wood drawer overlays throughout all case pieces. The ample storage case pieces, beveled mirror, felt lined drawers, and antique finish hardware make this set truly elegant and will be a great addition to your home.", image: "https://www.acmecorp.com/media//catalog/category/cache/801x571/21130Q_SET_L_3.jpg", pieces: 5, style: "traditional", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 1},
  {name: "Versailles Bedroom Set", category: "bedroom", description: "Sleep like royalty with this Versailles Bed Set. The bedroom set was inspired by old European design. The bed features carved scrollwork accent with nailhead trim décor and tufted upholstery on both headboard and footboard. The accent pieces crafted in wood with cherry oak veneer finish, and also include regal features such as ample storage, beveled mirror, felt lined drawers, and brown copper finish hardware. The carved details and cherry oak finish give a royal look to your bedroom space with this bed.", image: "https://www.acmecorp.com/media//catalog/category/cache/801x571/21120Q_SET_L_1.jpg", pieces: 5, style: "traditional", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 1},
  {name: "Faye Bed", category: "bedroom", description: "The Faye collection offers different bed options. The bed combines the traditional elements with the modern design. It features button tufted headboard with linen fabric. The wingback headboard design with the espresso tapered leg creates the luxurious atmosphere to fit every decoration.", image: "https://www.acmecorp.com/media//catalog/category/cache/801x571/20650Q_SET_L_1.jpg", pieces: 1, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 1},
  {name: "Versailles Dining Set", category: "dining", description: "Irresistibly inviting, the Versailles collection displays the unrivaled beauty of the traditional dining. The dining table reflects highly decorative base with oversized scrolled feet, and the upholstered and tapestried chairs with the deep button tufted and nail head trim accents add classic character and represents luxurious detailing. This collection offers three styles of tables and two finishes for you to choose, and it would be perfect for any formal dining room.", image: "https://www.acmecorp.com/media//catalog/category/cache/801x571/61130_SET_L_1.jpg", pieces: nil, style: "traditional", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 1},
  {name: "Versailles Dining Set", category: "dining", description: "Irresistibly inviting, the Versailles collection displays the unrivaled beauty of the traditional dining. The dining table reflects highly decorative base with oversized scrolled feet, and the upholstered and tapestried chairs with the deep button tufted and nail head trim accents add classic character and represents luxurious detailing. This collection offers three styles of tables and two finishes for you to choose, and it would be perfect for any formal dining room.", image: "https://www.acmecorp.com/media//catalog/category/cache/801x571/61100_SET_L_1.jpg", pieces: nil, style: "traditional", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 1},
  {name: "Lexis Bunk Bed", category: "bedroom", description: "Strikingly unique, this bunk bed is as beautiful as it is functional. The upper bed has safety rails, and the horizontal bars in between two curved metal posts also act as an access ladder to the top bunk.", image: "https://www.foagroup.com/media/catalog/product/cache/1/image/040ec09b1e35df139433887a97daa66f/c/m/cm-bk1036bw.jpg", pieces: 1, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 4},
  {name: "Woodridge Bunk Bed", category: "bedroom", description: "Built-in steps and drawers make this bunk bed a perfect upgrade to your child", image: "https://www.foagroup.com/media/catalog/product/cache/1/image/040ec09b1e35df139433887a97daa66f/i/m/image_184.jpg", pieces: 1, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 4},
  {name: "Lavonia Bedroom Set", category: "bedroom", description: "Transitional styling is paired with classic appointments and modern technology to create the Lavonia Collection. The eye-catching dramatic curve of the headboard creates instant appeal when taking in the design of this collection. The framing of the headboard carries over to the design of the low profile footboard and turned-foot supported recessed drawer front case pieces. Modern technology comes into play with the power strip – with USB port – charging station that is mounted to the upper back of the nightstand. A gray wire-brushed finish over oak veneers furthers the classic look of this bedroom collection", image: "https://www.homelegance.com/wp-content/uploads/2017/03/1707-1__11-750x500.jpg", pieces: 4, style: "rustic", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 2},
  {name: "Jaquelyn Bedroom Set", category: "bedroom", description: "Sweeping carvings and gorgeous veneer work highlight the Jaquelyn collection. Available in Cherry or Black finishes, the Jaquelyn evokes a French traditional styling in a compact size. Available in youth and master bedroom sizes.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/07/b8651-5304.jpg", pieces: 5, style: "traditional", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Solpine Bunk Bed", category: "bedroom", description: "A unique curved wooden post, along with its curved attached ladder, gives this bunk bed an exotic look. The posts are thick and sturdy, which underscores its bold and solid structure.", image: "https://www.foagroup.com/media/catalog/product/cache/1/image/040ec09b1e35df139433887a97daa66f/c/m/cm-bk618t-gy.jpg", pieces: 1, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 4},
  {name: "Sania Dining Set", category: "dining", description: "Rustic charm meets upscale design in the form of this stunning collection. The rustic wood grain and antique black finish take you to a charming farmhouse somewhere in the countryside, achieving an inviting, homey atmosphere that will have family and friends coming back for more. Elegant ivory linen-like chairs add sophisticated appeal with their wingback sides, button tufting and nailhead trim", image: "https://www.foagroup.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/m/cm3324bk-t.jpg", pieces: nil, style: "traditional", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 4},
  {name: "Richfield Dining Set", category: "dining", description: "Quite the attention grabber, this collection will immediately become the focal point of your home. Family and friends are sure to admire your fine taste when they lay eyes on this one-of-a-kind table. Bold posts create a sturdy base for the 12mm tempered glass top featuring smooth, curved edges. Matching padded faux leather chairs complete the look with their U-shaped chrome legs, which comes in either white or black. This set is available in both standard and counter height", image: "https://www.foagroup.com/media/catalog/product/cache/1/image/040ec09b1e35df139433887a97daa66f/c/m/cm3362t.jpg", pieces: nil, style: "contemporary", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 4},
  {name: "Lettie Pushback Chair", category: "seating", description: "Get the look of an elegant accent chair with the comfort of a recliner! Upholstered in fl annelette fabric, this stunning beige push-back chair features espresso legs, stylish rolled arms and attractive welting trim to dress up a formal living room or play down a fun and casual space", image: "https://www.foagroup.com/media/catalog/product/cache/1/image/040ec09b1e35df139433887a97daa66f/c/m/cm-rc6457.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: false, price: 0, brand_id: 4},
  {name: "Farmhouse Dining Set", category: "dining", description: "Rustic and simple this set will make any dining room feel complete. With solid design and your choice of bench or chairs every meal will feel like a get away into the countryside.", image: "http://www.urbanstyles.net/media/catalog/product/cache/1/image/900x600/9df78eab33525d08d6e5fb8d27136e95/f/a/farmhouse_set.jpg", pieces: nil, style: "rustic", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 5},
  {name: "Liberty Dining Set", category: "dining", description: "Distinguish your dining room with this dark toned dining set. Dark oak finishes feature rustic tones that add rich character to the clean designs. Comforting leatherette tightly wraps the cushioned chairs and slat backs provide a breathable back rest. Welcome this dining set for sophistication and unparalleled refinment.", image: "http://www.urbanstyles.net/media/catalog/product/cache/1/image/800x800/9df78eab33525d08d6e5fb8d27136e95/l/i/liberty_main.jpg", pieces: nil, style: "contemporary", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 5},
  {name: "Palmdale Dining Set", category: "dining", description: "Entertain your guest with this French country design dining set. Table features a butterfly leaf, and chairs are upholstered in rustic faux leather.", image: "http://www.urbanstyles.net/media/catalog/product/cache/1/image/900x600/9df78eab33525d08d6e5fb8d27136e95/p/a/palmdale_dining.jpg", pieces: nil, style: "contemporary", counter_height: false, sectional: nil, sofa_love: nil, price: 0, brand_id: 5},
  {name: "Melanie Sectional", category: "seating", description: "", image: "http://gomenfurniture.mov.mn/files/sanpham/58/1/jpg/melanie.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: false, price: 0, brand_id: 7},
  {name: "Nicole Sofa Set", category: "seating", description: "", image: "http://gomenfurniture.mov.mn/files/sanpham/26/1/jpg/nicole.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: true, price: 0, brand_id: 7},
  {name: "Sunrise Sofa Set", category: "seating", description: "", image: "http://gomenfurniture.mov.mn/files/sanpham/22/1/jpg/sunrise.jpg", pieces: nil, style: "rustic", counter_height: nil, sectional: nil, sofa_love: true, price: 0, brand_id: 7},
  {name: "Polo Sofa Set", category: "seating", description: "", image: "http://gomenfurniture.mov.mn/files/sanpham/48/1/jpg/polo.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: true, price: 0, brand_id: 7},
  {name: "Dallas Sofa Set", category: "seating", description: "", image: "http://danstoller.mov.mn/files/sanpham/37/1/jpg/dallas.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: true, price: 0, brand_id: 8},
  {name: "Oxford Sectional", category: "seating", description: "", image: "http://danstoller.mov.mn/files/sanpham/16/1/jpg/oxford.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: false, price: 0, brand_id: 8},
  {name: "Roxanne Sofa Set", category: "seating", description: "", image: "http://danstoller.mov.mn/files/sanpham/5/1/jpg/roxanne-gray.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: true, price: 0, brand_id: 8},
  {name: "Hallie Sofa Set", category: "seating", description: "A quintessential representation of mid-century modern styles, this chenille upholstered sofa features gorgeous accents such as button tufting and sloped track arms. Extra padding within the arms enhance the comfort of the already plush foam-filled structure while durable hardwood legs and framework offer peace of mind for a numbers years to come.", image: "https://www.foagroup.com/media/catalog/product/cache/1/image/040ec09b1e35df139433887a97daa66f/s/m/sm8822-sf.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: false, sofa_love: true, price: 899, brand_id: 4},
  {name: "Sheridan Bedroom Set", category: "bedroom", description: "The Sheridan collection offers a luxurious ambience with exquisite detail and refined style. Distinctive style elements include bookmatched veneers framed with contrasting edge banding, inlaid detailing on case tops, reeded pilasters, and antique brass finished hardware, Combining tradition with modern day convenience, Sheridan offers optional underbed storage and felt lined top drawers in the dresser, chest, and nightstand.", image: "http://newclassicfurniture.com/wp-content/uploads/2016/07/sheridan_hr_rgb_jpg.jpg", pieces: 5, style: "traditional", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 6},
  {name: "Gartel Day Bed", category: "bedroom", description: "Throw the ultimate slumber party with this espresso finished 3-layer nesting daybed! Have friends or family comfortably tucked in any of the three twin-size sleeping spaces. When it comes time for them to leave, roll the frames back under the daybed and regain valuable floor space. The slatted ends and plank style sides give a charming visual, adding a touch of style to a piece with tons of function.", image: "https://www.foagroup.com/media/catalog/product/cache/1/image/040ec09b1e35df139433887a97daa66f/c/m/cm1610.jpg", pieces: 1, style: "contemporary", counter_height: nil, sectional: nil, sofa_love: nil, price: 0, brand_id: 4},
  {name: "Pecos Sofa Set", category: "seating", description: "The Pecos Collection blends style and function to create a platform for relaxation. Modernizing the look of the ample seating is an inset contrast welt. Chair, love seat and sofa are available in both manual and power version while the sectional is available in manual version only. With a pull of the handle, the user is changed from a seated position to a reclined position smoothly. The leather gel match covered collection is offered in three stylish colors – gray, red and dark brown.", image: "https://www.homelegance.com/wp-content/uploads/2017/06/8480BRW-3__1-750x500.jpg", pieces: nil, style: nil, counter_height: nil, sectional: false, sofa_love: true, price: 1099, brand_id: 2},
  {name: "Deryn Sofa Set", category: "seating", description: "Mid-Century modern design is the inspiration for the Deryn Collection. Wide, dramatically curved arms rise to the straight back that is synonymous with this classic style. Contrast toss pillows and an additional chair option are featured in a modern teal or grey herringbone pattern to complement the teal, beige and grey seating body covers. Natural tone finished legs support the frame while tailored stitch tufting lends further accent to this thoroughly modern collection", image: "https://www.homelegance.com/wp-content/uploads/2016/02/8327TL-3__1-750x500.jpg", pieces: nil, style: "contemporary", counter_height: nil, sectional: false, sofa_love: true, price: 949, brand_id: 2}
])
Store.create!([
  {name: "Royal Furniture", address: "5365 N Blackstone Ave, Fresno, CA 93710", phone: "(559) 431-1217", hours: "Mon-Sat: 10AM-8PM, Sun: 10:30AM-8PM", facebook: "https://www.facebook.com/pages/Royal-Furniture-Fresno-Ca/348307628575645", instagram: nil, twitter: nil, pinterest: nil, email: "royalfurniture2012@yahoo.com", store_image: "https://s3-us-west-1.amazonaws.com/royal-furniture/IMG_0157.JPG", store_copy: "Come by Royal Furniture in Fresno for the best selection of elegant home furniture. We know that shopping for furniture can be a bit overwhelming, but our fantastic staff can help you with any problem or question that may come up. We offer a wide variety of sofas, dining room sets, entertainment centers, mattresses, and much more! Come see our showroom today on the corner of Blackstone and Barstow", gmaps: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12776.556342946536!2d-119.7919216!3d36.8151869!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3ebee9e8532f014a!2sRoyal+Furniture!5e0!3m2!1sen!2sus!4v1506130453305"}
])
