import MainLayout from "@/Layouts/MainLayout";

const Gallery = ({ gallery }) => {
    return (
        <MainLayout>
            <div className="grid grid-cols-1 md:grid-cols-3 xl:grid-cols-4 lg:grid-cols-4 gap-4 p-4 mt-44">
                {gallery.map((item) => (
                    <div
                        key={item.id}
                        className="relative group cursor-pointer overflow-hidden rounded-lg"
                    >
                        <img
                            src={item.image}
                            alt={item.name}
                            className="w-full h-[500px] object-cover transform group-hover:scale-110 transition duration-300 ease-in-out"
                        />
                        <div className="absolute inset-0 bg-black opacity-30 group-hover:opacity-0 transition-opacity duration-300"></div>
                    </div>
                ))}
            </div>
        </MainLayout>
    );
};

export default Gallery;
