all:
	rustc -L./kiss3d/glcore-rs/lib/ -L./kiss3d/glfw-rs/lib/ -L./kiss3d/lib -L./nalgebra/lib graph.rs --opt-level=3
	rm -rf simple.dot
	rm -rf line.dot
	./graph

simple:
	dot -Kfdp -n -Tpdf simple.dot -o simple.pdf
	open simple.pdf

line:
	dot -Kfdp -n -Tpdf line.dot -o line.pdf
	open line.pdf
